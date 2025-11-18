const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.readContractorList = functions.https.onRequest(async (req, res) => {
  try {
    const firestore = admin.firestore();

    // Read all user documents from the "users" collection
    const snapshot = await firestore.collection("users").get();

    // Extract the display names into a list
    const contractorList = snapshot.docs.map((doc) => doc.data().displayName);

    console.log("Contractor list:", contractorList);

    // Return the list as JSON
    res.status(200).json({ contractorList });
  } catch (error) {
    console.error("Error reading contractor list:", error);
    res.status(500).send("Internal Server Error");
  }
});
