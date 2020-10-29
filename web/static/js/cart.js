//获取当前网址，如： http://localhost:8080/yummy/index.jsp
var curPath = window.document.location.href;
//获取主机地址之后的目录，如： yummy/index.jsp
var pathName = window.document.location.pathname;
var pos = curPath.indexOf(pathName);
//获取主机地址，如： http://localhost:8080
var localhostPath = curPath.substring(0, pos);
//获取带"/"的项目名，如：/yummy
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

const basePath = localhostPath + projectName;

window.onbeforeunload = function(event) {
    var cartMap = new Map();
    var ids = "";
    $.each($('.cart_item_checkbox:checked'), function () {
        ids = ids + '-' + $(this).attr('itemid');
    })
    cartMap.set('checked', ids);
    ids = "";
    $.each($('.cart_item_checkbox'), function () {
        ids = ids + '-' + $(this).attr('itemid');
    })
    cartMap.set('items', ids);
    var counts = "";
    $.each($('.cart_item_count'), function () {
        counts = counts + '-' + $(this).text();
    })
    cartMap.set('counts', counts);
    refreshCart(cartMap);
}

function refreshCart(map){
    var obj = Object.create(null);
    for(var[k,v] of map){
        console.log(k);
        console.log(v);
        obj[k] = v;
    }
    $.ajax({
        url: basePath + '/refreshCart.cart',
        data: {
            'map': JSON.stringify(obj)
        }
    })

}

function refreshCheckedBox(){
    var flag = $('.cart_item_checkbox:checked').length === $('.cart_item_checkbox').length;
    $('#check_all_checkbox').prop('checked', flag);
}

function refreshTotal(){
    var checkedItems = $('.cart_item_checkbox:checked');
    // console.log(checkedItems);
    var totalPrice = 0;
    var totalCount = 0;
    if (checkedItems.length > 0) {
        $('#count_cart_btn').removeAttr('disabled');
        $.each(checkedItems, function (index, item) {
            //console.log(totalPrice);
            var parentNode = $(item).parent().parent().parent();
            totalCount += parseInt($(parentNode.children('.number').children('.num').children('span')[0]).text());
            totalPrice = totalPrice + parseFloat($(parentNode.children('.price_total')[0]).text().substring(1));
        })
        $('#cart_total_count').text(totalCount);
        $('#cart_total_price').text('￥' + totalPrice.toFixed(2));
    } else {
        $('#count_cart_btn').attr('disabled', 'disabled');
        $('#cart_total_count').text(0);
        $('#cart_total_price').text('￥0.00');
        $('#check_all_checkbox').prop('checked', false);
    }
}

$(function () {
    $.ajax({
        url: basePath + '/showCart.cart',
        type: 'POST',
        datatype: 'json',
        success: function (result) {
            if (typeof result == "string") {
                result = eval('(' + result + ')');
            }
            showCart(result);
            showChecked(result.msgItems.cart.checkedCartItems);
        }
    });

    $(document).on('click', '.cart_item_del_btn', function () {
        if(confirm("确认移除该商品？")){
            $(this).parent().parent().remove();
            refreshCheckedBox();
            refreshTotal();
            if($('.cart_item_td').length === 0){
                showEmptyCartDiv();
            }
        }

    })

    $(document).on('click', '.delete_checked_btn', function () {
        if(confirm("确认移除选中商品？")){
            $.each($('.cart_item_checkbox:checked'), function () {
                $(this).parent().parent().parent().remove();
                refreshCheckedBox();
                refreshTotal();
                if($('.cart_item_td').length === 0){
                    showEmptyCartDiv();
                }
            })
        }
    })

    $(document).on('change', '.cart_item_checkbox', function () {
        refreshCheckedBox();
        refreshTotal();
    })

    $(document).on('change', '#check_all_checkbox', function () {
        $('.cart_item_checkbox').prop('checked', $(this).prop('checked'));
        //refreshTotal();
    })

    $(document).on('click', '#check_all_btn', function () {
        var flag = $("#check_all_checkbox").prop('checked');
        $('#check_all_checkbox').prop('checked', !flag);
        $('.cart_item_checkbox').prop('checked', !flag);
        refreshTotal();
    })

    $(document).on('click', '#count_cart_btn', function () {

        location.href = basePath + '/pages/manager/order.jsp';
    })

    $(document).on('click', '.num .sub', function () {
        var count = parseInt($(this).siblings("span").text());
        if (count <= 1) {
        } else {
            count--;
            $(this).siblings("span").text(count);
            countChanged($(this).siblings("span"));
        }
    });

    $(document).on('click', '.num .add', function () {
        var c = parseInt($(this).siblings("span").text());
        c++;
        $(this).siblings("span").text(c);
        countChanged($(this).siblings("span"));
    });
});

function countChanged(ele) {
    var count = ele.text();
    var parentNode = ele.parent().parent().parent();
    var price = $(parentNode.children('.price_single')[0]).text();
    price = parseFloat(price.substring(1));

    $(parentNode.children('.price_total')[0]).text('￥' + (price * count).toFixed(2));

    if (parentNode.children('.pro').children('.fl').children('.cart_item_checkbox').prop('checked')) {
        console.log('checked true');
        refreshTotal();
    }
}

function showCart(result) {
    $('.cart_item_td').remove();
    if (true === result.msgItems.cart.emptyCart) {
        showEmptyCartDiv();
    } else {
        removeElement($('#empty_cart_div'));
        $.each(result.msgItems.cart.cartItems, function (key, value) {
            showCartItem(value);
        });
    }
    refreshTotal();
}

function showChecked(result) {
    $.each(result, function (key, value) {
        $('.cart_item_checkbox[itemid=' + key + ']').attr('checked', true);
    })
    refreshCheckedBox();
    refreshTotal();
}

function showCartItem(item) {
    var ele = $('<div class="td cart_item_td">\n' +
        '                        <div class="pro clearfix">\n' +
        '                            <label class="fl"><input type="checkbox" itemid="' + item.id + '" class="cart_item_checkbox"/><span></span></label>\n' +
        '                            <a class="fl" href="#"><dl class="clearfix">\n' +
        '                                <dt class="fl" ><img class="cart_item_img" src="' + basePath + item.img_path + '"></dt>\n' +
        '                                <dd class="fl">\n' +
        '                                    <p>' + item.name + '</p>\n' +
        '                                    <p>颜色分类:</p>\n' +
        '                                    <p>' + item.name + '</p>\n' +
        '                                </dd>\n' +
        '                            </dl></a>\n' +
        '                        </div>\n' +
        '                        <div class="price price_single">￥' + parseFloat(item.price).toFixed(2) + '</div>\n' +
        '                        <div class="number">\n' +
        '                            <p class="num clearfix">\n' +
        '                                <img class="fl sub" src="' + basePath + '/static/img/temp/sub.jpg">\n' +
        '                                <span class="fl cart_item_count" itemid=' + item.id + '>' + item.count + '</span>\n' +
        '                                <img class="fl add" src="' + basePath + '/static/img/temp/add.jpg">\n' +
        '                            </p>\n' +
        '                        </div>\n' +
        '                        <div class="price price_total sAll">￥' + parseFloat(item.totalPrice).toFixed(2) + '</div>\n' +
        '                        <div class="price"><button type="button" class="btn btn-link cart_item_del_btn" itemid="' + item.id + '">删除</button></div>\n' +
        '                    </div>');
    $('#cart_table #cart_table_head').after(ele);
}

function showEmptyCartDiv() {
    var ele = $('<div class="goOn" id="empty_cart_div">空空如也~<a href="' + basePath + '/pages/shopping.jsp">去逛逛</a></div>');
    $('#cart_table #cart_table_head').after(ele);
}

function removeElement(element) {
    $(element).remove();
}
