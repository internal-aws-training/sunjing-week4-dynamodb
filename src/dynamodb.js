const AWS = require("aws-sdk");

const REGION = process.env.REGION;
AWS.config.update({region: REGION});

const localOptions = {
  apiVersion: "2012-08-10",
  endpoint: "http://localhost:4566"
};
const prodOptions = {
  apiVersion: "2012-08-10"
};

const options = process.env.APP_ENV = "local" ? localOptions : prodOptions;
const ddb = new AWS.DynamoDB(options);

const putItemToDDB = async () => {
  const params = {
    Item: {
      projectName: {
        S: "new_project"
      },
      projectType: {
        S: "new_type"
      }
    },
    TableName: process.env.TABLE_NAME
  };

  try {
    return await ddb.putItem(params).promise()
  } catch (e) {
    throw new Error("put item into dynamodb table failed", e.message);
  }
};

const updateItemFromDDB = async () => {
  const params = {
    ExpressionAttributeValues: {
      ":memberName": {
        S: "haha_memberName"
      }
    },
    Key: {
      projectName: {
        S: "new_project"
      },
      projectType: {
        S: "new_type"
      }
    },
    ReturnValues: "ALL_NEW",
    UpdateExpression: "SET memberName = :memberName",
    TableName: process.env.TABLE_NAME
  };

  try {
    return await ddb.updateItem(params).promise()
  } catch (e) {
    throw new Error("update item into dynamodb table failed", e.message);
  }
};

const deleteItemFromDDB = async () => {
  const params = {
    Key: {
      projectName: {
        S: "new_project"
      },
      projectType: {
        S: "new_type"
      }
    },
    TableName: process.env.TABLE_NAME
  };

  try {
    return await ddb.deleteItem(params).promise()
  } catch (e) {
    throw new Error("delete item from dynamodb table failed", e.message);
  }
};

const getItemFromDDB = async () => {
  const params = {
    Key: {
      projectName: {
        S: "new_project"
      },
      projectType: {
        S: "new_type"
      }
    },
    TableName: process.env.TABLE_NAME
  };

  try {
    return await ddb.getItem(params).promise();
  } catch (e) {
    throw new Error("get item from dynamodb table failed", e.message);
  }
};

module.exports = {
  putItemToDDB,
  getItemFromDDB,
  updateItemFromDDB,
  deleteItemFromDDB
};
