var rcmBanchanList;

// 06_recommendbanchan.json 리스트를 받아옴
const getRecommendTotal = async () => {
    try {
        const response = await fetch("https://raw.githubusercontent.com/Jiseon-Lee/js_project1/refs/heads/main/json/06_recommendbanchan.json");
        console.log("getRecommendTotal");
        if (!response.ok) throw new Error("데이터를 불러오는 데 실패했습니다.");

        const data = await response.json();
        rcmBanchanList = data;
        console.log("recommend.js ", data);
        if (data.length > 0) {
            getRcmBanchanList(data[0]);
        }
    } catch (error) {
        console.error("오류 발생:", error);
    }
}

// 문서가 로드되면
document.addEventListener('DOMContentLoaded', function() {
    console.log("recommend.js addEventListener");
    getRecommendTotal();
})

function getRcmBanchanList(obj) {      // 보여줄 상품을 HTML에 추가
    $("#section_6 .rec_img img").attr("src", `${obj["rec_img"]}`);
    $("#section_6 .rec_right_header h3").text(`${obj["title"]}님의 장바구니`);
    $("#section_6 .rec_right_header p").html(`${obj["disc"]}`);

    var list = obj["list"]
    $("#section_6 .rec_right_content").empty();
    for(let i in list){
        $("#section_6 .rec_right_content").append(`
            <div class="product_rec">
                <img src="${list[i].main_img}" alt="${list[i].name}">
                <div class="rec_disc">
                    <h4>${list[i].name}</h4>
                    <p>${list[i].discription}</p>
                    <h5>${list[i].discount_price}원</h5>
                </div>
            </div>
        `);
    }
}

$(function() {
    $("#section_6 .recommend_tab span").click(function() {
        var menu = $("#section_6 .recommend_tab span").index(this);
        $("#section_6 .recommend_tab span").removeClass("on");
        $("#section_6 .recommend_tab span").eq(menu).addClass("on");
        console.log("recommend_tab changed ", menu);
        getRcmBanchanList(rcmBanchanList[menu]);
    });
});