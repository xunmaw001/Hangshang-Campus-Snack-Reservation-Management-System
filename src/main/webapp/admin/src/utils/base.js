const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmv5e5m/",
            name: "ssmv5e5m",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmv5e5m/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "杭商校园零食预约管理系统"
        } 
    }
}
export default base
