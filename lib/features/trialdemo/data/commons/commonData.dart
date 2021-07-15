enum HttpMethod { get, post, put, delete }

class KeySharedPreference {
  // Lưu lại token cho xử lý expired
  static final String tokenExpiredSecurity = "token_expired_secutity";
}

class ApiUrls {}

/*
* Nhận code phản hồi từ server
* 0 : Api trả về thành công
* 1 : Api trả về thất bại
* 2 : Api trả về cảnh báo
 */
class ResponseCode {
  static final int responseSuccess = 0;
  static final int responseFailed = 1;
  static final int responseWarning = 2;
  static final int responseTokenExpired = 401;
}
