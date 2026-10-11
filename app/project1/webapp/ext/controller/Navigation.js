sap.ui.define([], function () {
    "use strict";

    return {
        toCategories: function () {
            this.routing.navigateToRoute("CategoriesList");
        },
        toSuppliers: function () {
            this.routing.navigateToRoute("SuppliersList");
        }
        
    };
});
