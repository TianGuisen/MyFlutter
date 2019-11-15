import 'dart:convert' show json;

class TestInfo1 {

    int error_code;
    String reason;
    String resultcode;
    Result result;

    TestInfo1.fromParams({this.error_code, this.reason, this.resultcode, this.result});

    factory TestInfo1(jsonStr) => jsonStr == null ? null : jsonStr is String ? new TestInfo1.fromJson(json.decode(jsonStr)) : new TestInfo1.fromJson(jsonStr);

    TestInfo1.fromJson(jsonRes) {
        error_code = jsonRes['error_code'];
        reason = jsonRes['reason'];
        resultcode = jsonRes['resultcode'];
        result = jsonRes['result'] == null ? null : new Result.fromJson(jsonRes['result']);
    }

    @override
    String toString() {
        return '{"error_code": $error_code,"reason": ${reason != null?'${json.encode(reason)}':'null'},"resultcode": ${resultcode != null?'${json.encode(resultcode)}':'null'},"result": $result}';
    }
}

class Result {

    List<Dict> future;
    SK sk;
    Today today;

    Result.fromParams({this.future, this.sk, this.today});

    Result.fromJson(jsonRes) {
        future = jsonRes['future'] == null ? null : [];

        for (var futureItem in future == null ? [] : jsonRes['future']){
            future.add(futureItem == null ? null : new Dict.fromJson(futureItem));
        }

        sk = jsonRes['sk'] == null ? null : new SK.fromJson(jsonRes['sk']);
        today = jsonRes['today'] == null ? null : new Today.fromJson(jsonRes['today']);
    }

    @override
    String toString() {
        return '{"future": $future,"sk": $sk,"today": $today}';
    }
}

class Today {

    String city;
    String comfort_index;
    String date_y;
    String dressing_advice;
    String dressing_index;
    String drying_index;
    String exercise_index;
    String temperature;
    String travel_index;
    String uv_index;
    String wash_index;
    String weather;
    String week;
    String wind;
    WeatherId weather_id;

    Today.fromParams({this.city, this.comfort_index, this.date_y, this.dressing_advice, this.dressing_index, this.drying_index, this.exercise_index, this.temperature, this.travel_index, this.uv_index, this.wash_index, this.weather, this.week, this.wind, this.weather_id});

    Today.fromJson(jsonRes) {
        city = jsonRes['city'];
        comfort_index = jsonRes['comfort_index'];
        date_y = jsonRes['date_y'];
        dressing_advice = jsonRes['dressing_advice'];
        dressing_index = jsonRes['dressing_index'];
        drying_index = jsonRes['drying_index'];
        exercise_index = jsonRes['exercise_index'];
        temperature = jsonRes['temperature'];
        travel_index = jsonRes['travel_index'];
        uv_index = jsonRes['uv_index'];
        wash_index = jsonRes['wash_index'];
        weather = jsonRes['weather'];
        week = jsonRes['week'];
        wind = jsonRes['wind'];
        weather_id = jsonRes['weather_id'] == null ? null : new WeatherId.fromJson(jsonRes['weather_id']);
    }

    @override
    String toString() {
        return '{"city": ${city != null?'${json.encode(city)}':'null'},"comfort_index": ${comfort_index != null?'${json.encode(comfort_index)}':'null'},"date_y": ${date_y != null?'${json.encode(date_y)}':'null'},"dressing_advice": ${dressing_advice != null?'${json.encode(dressing_advice)}':'null'},"dressing_index": ${dressing_index != null?'${json.encode(dressing_index)}':'null'},"drying_index": ${drying_index != null?'${json.encode(drying_index)}':'null'},"exercise_index": ${exercise_index != null?'${json.encode(exercise_index)}':'null'},"temperature": ${temperature != null?'${json.encode(temperature)}':'null'},"travel_index": ${travel_index != null?'${json.encode(travel_index)}':'null'},"uv_index": ${uv_index != null?'${json.encode(uv_index)}':'null'},"wash_index": ${wash_index != null?'${json.encode(wash_index)}':'null'},"weather": ${weather != null?'${json.encode(weather)}':'null'},"week": ${week != null?'${json.encode(week)}':'null'},"wind": ${wind != null?'${json.encode(wind)}':'null'},"weather_id": $weather_id}';
    }
}

class WeatherId {

    String fa;
    String fb;

    WeatherId.fromParams({this.fa, this.fb});

    WeatherId.fromJson(jsonRes) {
        fa = jsonRes['fa'];
        fb = jsonRes['fb'];
    }

    @override
    String toString() {
        return '{"fa": ${fa != null?'${json.encode(fa)}':'null'},"fb": ${fb != null?'${json.encode(fb)}':'null'}}';
    }
}

class SK {

    String humidity;
    String temp;
    String time;
    String wind_direction;
    String wind_strength;

    SK.fromParams({this.humidity, this.temp, this.time, this.wind_direction, this.wind_strength});

    SK.fromJson(jsonRes) {
        humidity = jsonRes['humidity'];
        temp = jsonRes['temp'];
        time = jsonRes['time'];
        wind_direction = jsonRes['wind_direction'];
        wind_strength = jsonRes['wind_strength'];
    }

    @override
    String toString() {
        return '{"humidity": ${humidity != null?'${json.encode(humidity)}':'null'},"temp": ${temp != null?'${json.encode(temp)}':'null'},"time": ${time != null?'${json.encode(time)}':'null'},"wind_direction": ${wind_direction != null?'${json.encode(wind_direction)}':'null'},"wind_strength": ${wind_strength != null?'${json.encode(wind_strength)}':'null'}}';
    }
}

class Dict {

    String date;
    String temperature;
    String weather;
    String week;
    String wind;
    WeatherId weather_id;

    Dict.fromParams({this.date, this.temperature, this.weather, this.week, this.wind, this.weather_id});

    Dict.fromJson(jsonRes) {
        date = jsonRes['date'];
        temperature = jsonRes['temperature'];
        weather = jsonRes['weather'];
        week = jsonRes['week'];
        wind = jsonRes['wind'];
        weather_id = jsonRes['weather_id'] == null ? null : new WeatherId.fromJson(jsonRes['weather_id']);
    }

    @override
    String toString() {
        return '{"date": ${date != null?'${json.encode(date)}':'null'},"temperature": ${temperature != null?'${json.encode(temperature)}':'null'},"weather": ${weather != null?'${json.encode(weather)}':'null'},"week": ${week != null?'${json.encode(week)}':'null'},"wind": ${wind != null?'${json.encode(wind)}':'null'},"weather_id": $weather_id}';
    }
}
