import 'dart:convert' show json;

class GetInfo {

    int code;
    List<BannerInfo> data;

    GetInfo.fromParams({this.code, this.data});

    factory GetInfo(jsonStr) => jsonStr == null ? null : jsonStr is String ? new GetInfo.fromJson(json.decode(jsonStr)) : new GetInfo.fromJson(jsonStr);

    GetInfo.fromJson(jsonRes) {
        code = jsonRes['code'];
        data = jsonRes['data'] == null ? null : [];

        for (var dataItem in data == null ? [] : jsonRes['data']){
            data.add(dataItem == null ? null : new BannerInfo.fromJson(dataItem));
        }
    }

    @override
    String toString() {
        return '{"code": $code,"data": $data}';
    }
}

class BannerInfo {

    int type;
    int weight;
    String hash;
    String image;
    String remark;
    String title;
    String value;

    BannerInfo.fromParams({this.type, this.weight, this.hash, this.image, this.remark, this.title, this.value});

    BannerInfo.fromJson(jsonRes) {
        type = jsonRes['type'];
        weight = jsonRes['weight'];
        hash = jsonRes['hash'];
        image = jsonRes['image'];
        remark = jsonRes['remark'];
        title = jsonRes['title'];
        value = jsonRes['value'];
    }

    @override
    String toString() {
        return '{"type": $type,"weight": $weight,"hash": ${hash != null?'${json.encode(hash)}':'null'},"image": ${image != null?'${json.encode(image)}':'null'},"remark": ${remark != null?'${json.encode(remark)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'},"value": ${value != null?'${json.encode(value)}':'null'}}';
    }
}

