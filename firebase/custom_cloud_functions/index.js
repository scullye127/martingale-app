const admin = require("firebase-admin/app");
admin.initializeApp();

const readContractorList = require("./read_contractor_list.js");
exports.readContractorList = readContractorList.readContractorList;
