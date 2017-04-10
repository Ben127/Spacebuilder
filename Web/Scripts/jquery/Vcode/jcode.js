﻿var inp = document.getElementById('inputCode');
var code = document.getElementById('code');
var c = new KinerCode({
    len: 4,//需要产生的验证码长度
    //        chars: ["1+2","3+15","6*8","8/4","22-15"],//问题模式:指定产生验证码的词典，若不给或数组长度为0则试用默认字典
    chars: [
        1, 2, 3, 4, 5, 6, 7, 8, 9, 0,
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
    ],//经典模式:指定产生验证码的词典，若不给或数组长度为0则试用默认字典
    question:false,//若给定词典为算数题，则此项必须选择true,程序将自动计算出结果进行校验【若选择此项，则可不配置len属性】,若选择经典模式，必须选择false
    copy: false,//是否允许复制产生的验证码
    bgColor:"",//背景颜色[与背景图任选其一设置]
    bgImg:"bg.jpg",//若选择背景图片，则背景颜色失效
    randomBg : false,//若选true则采用随机背景颜色，此时设置的bgImg和bgColor将失效
    inputArea: inp,//输入验证码的input对象绑定【 HTMLInputElement 】
    codeArea: code,//验证码放置的区域【HTMLDivElement 】
    click2refresh:true,//是否点击验证码刷新验证码
    false2refresh:true,//在填错验证码后是否刷新验证码
    validateEven : "blur",//触发验证的方法名，如click，blur等
    validateFn : function(result,code){//验证回调函数
        if(result){
            alert('验证成功');
        }else{

            if(this.opt.question){
                alert('验证失败:'+code.answer);
            }else{
                alert('验证失败:'+code.strCode);
                alert('验证失败:' + code.arrCode);
            }
        }
    }
});

var c2 = new KinerCode({
    len: 4,//需要产生的验证码长度
    chars: ["1+2","3+15","6*8","8/4","22-15"],//问题模式:指定产生验证码的词典，若不给或数组长度为0则试用默认字典
    //        chars: [
    //            1, 2, 3, 4, 5, 6, 7, 8, 9, 0,
    //            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
    //            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
    //        ],//经典模式:指定产生验证码的词典，若不给或数组长度为0则试用默认字典
    question:true,//若给定词典为算数题，则此项必须选择true,程序将自动计算出结果进行校验【若选择此项，则可不配置len属性】,若选择经典模式，必须选择false
    copy: false,//是否允许复制产生的验证码
    bgColor:"",//背景颜色[与背景图任选其一设置]
    bgImg:"",//若选择背景图片，则背景颜色失效
    randomBg : true,//若选true则采用随机背景颜色，此时设置的bgImg和bgColor将失效
    inputArea: inp2,//输入验证码的input对象绑定【 HTMLInputElement 】
    codeArea: code2,//验证码放置的区域【HTMLDivElement 】
    click2refresh:true,//是否点击验证码刷新验证码
    false2refresh:true,//在填错验证码后是否刷新验证码
    validateEven : "blur",//触发验证的方法名，如click，blur等
    validateFn : function(result,code){//验证回调函数
        if(result){
            alert('验证成功');
        }else{

            if(this.opt.question){
                alert('验证失败:'+code.answer);
            }else{
                alert('验证失败:'+code.strCode);
                alert('验证失败:' + code.arrCode);
            }
        }
    }
});
