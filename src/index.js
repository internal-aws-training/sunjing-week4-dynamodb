const { getItemFromDDB, updateItemFromDDB, putItemToDDB,deleteItemFromDDB } = require("./dynamodb");

exports.handler =  async function(event, context) {
  try {
    console.log("EVENT: \n" + JSON.stringify(event, null, 2))
    console.log("put item into ddb...");
    const putRes = await putItemToDDB();
    console.log("put res: ", JSON.stringify(putRes));

    console.log("get item from ddb...");
    const getRes = await getItemFromDDB();
    console.log("get res: ", JSON.stringify(getRes));

    console.log("update item from ddb...");
    const updateRes = await updateItemFromDDB();
    console.log("update res: ", JSON.stringify(updateRes));

    console.log("delete item from ddb...");
    const deleteRes = await deleteItemFromDDB();
    console.log("get res: ", JSON.stringify(deleteRes));

    console.log("============end=============")
  } catch (e) {
    throw e;
  }
};
