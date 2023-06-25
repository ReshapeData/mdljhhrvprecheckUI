#' 按纽生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' jhhrvsrcsocialsecurityUI()
jhhrvodsUI <- function(tabTitle = 'ODS层',
                       colTitles = c('查询', '更新区', '显示区域'),
                       widthRates = c(6, 6, 12),
                       func_left = buttonodsUI_left,
                       func_right = buttonodsUI_right,
                       func_bottom = buttonodsUI_bottom) {
  #三栏式设置，可以复制
  res = tsui::uiGen3(
    tabTitle = tabTitle,
    colTitles = colTitles,
    widthRates = widthRates,
    func_left = func_left,
    func_right = func_right,
    func_bottom = func_bottom
  )
  return(res)
  
}



#' 查询
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_left()
buttonodsUI_left <- function() {
  res <- tagList(
    shiny::actionButton(inputId = 'btn_hrv_precheck_view_salaryods' , label = '工资异常检查'),
    shiny::actionButton(inputId = 'btn_hrv_precheck_view_socialsecurityods' , label = '社保公积金异常检查'),
    shiny::actionButton(inputId = 'btn_hrv_precheck_view_rulevoucherods' , label = '凭证规则表异常检验')
    
    
    
  )
  return(res)
  
}


#' 更新
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_left()
buttonodsUI_right <- function() {
  res <- tagList(
    shiny::actionButton(inputId = 'btn_hrv_precheck_update_salaryods' , label = '工资异常处理'),
    shiny::actionButton(inputId = 'btn_hrv_precheck_update_socialsecurityods' , label = '社保公积金处理'),
    shiny::actionButton(inputId = 'btn_hrv_precheck_update_rulevoucherods' , label = '凭证规则表异常处理')
    
    
    
  )
  return(res)
  
}


#' 预览区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_right()
buttonodsUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'hrv_precheck_view_data_ods', label = '预览'))

  )
  return(res)
  
}
