var modules = {};

(function(modules){

    var module = {};

    module.crown = function(name) {
        return 'King ' + name;
    }

    modules.utils = module;

})(modules);