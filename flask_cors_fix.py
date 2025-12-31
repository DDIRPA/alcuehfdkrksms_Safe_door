# Flask 서버에 CORS 설정을 추가하는 방법
# 
# 방법 1: flask-cors 라이브러리 사용 (권장)
# 
# 1. flask-cors 설치:
#    pip install flask-cors
# 
# 2. Flask 코드에 추가:
# 
#    from flask import Flask
#    from flask_cors import CORS
#    
#    app = Flask(__name__)
#    CORS(app)  # 모든 origin에서의 요청 허용
#    
#    # 또는 특정 origin만 허용하려면:
#    # CORS(app, resources={r"/status": {"origins": "*"}})
#    
#    @app.route('/status')
#    def status():
#        return jsonify({
#            "helmet": True,
#            "vest": True,
#            "pass": True
#        })
# 
# 
# 방법 2: 수동으로 CORS 헤더 추가 (flask-cors 없이)
# 
#    from flask import Flask, jsonify
#    
#    app = Flask(__name__)
#    
#    @app.after_request
#    def after_request(response):
#        response.headers.add('Access-Control-Allow-Origin', '*')
#        response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
#        response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS')
#        return response
#    
#    @app.route('/status')
#    def status():
#        return jsonify({
#            "helmet": True,
#            "vest": True,
#            "pass": True
#        })
# 
# 
# 방법 3: /status 엔드포인트에만 CORS 헤더 추가
# 
#    from flask import Flask, jsonify
#    
#    app = Flask(__name__)
#    
#    @app.route('/status')
#    def status():
#        response = jsonify({
#            "helmet": True,
#            "vest": True,
#            "pass": True
#        })
#        response.headers.add('Access-Control-Allow-Origin', '*')
#        return response

