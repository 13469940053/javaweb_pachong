/**
 * 
 * 判断非空
 * @authors 张成
 * @date    2018-06-14 21:50:27
 * @param val
 * @returns  {Boolean}
 */

function isEmpty(val){
    val=$.trim(val);
    if (val==null) {
        return true;
    }
    if (val==undefined||val=='undefined') {
        return true;
    };
    if (val=="") {
        return true;
    }
    if (val.length== 0) {
        return true;
    }
    if (!/[^(^\s*)|(\s*$)]/.test(val)) {
        return true;
    return false;
    }
}

function isNotEmpty(val){
    return !isEmpty(val);
}

//判断两个元素是否相等
function eqauls(str,tstr){
    if (str==tstr) {
        return true;
    }
    return false;

};