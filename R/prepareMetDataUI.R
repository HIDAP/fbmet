
#' prepareMetDataUI
#'
#' @param id shiny id
#' @import fbhelp
#' @return shiny fluid row
#' @export
prepareMetDataUI <- function(id){
  shiny::fluidRow(
    column(width = 3,
           #fbhelp::ui_tips("getFieldbooks", "fbmet"),
           h3("Fieldbook selection"),
                shinyFiles::shinyFilesButton('dc_fieldbook',
                                             'Fieldbook',
                                            'Please select a set of fieldbooks', TRUE
               ),
             br(),
             uiOutput("ui_met_env"),
             uiOutput("ui_met_plt"),
             uiOutput("ui_met_rep"),
             uiOutput("ui_met_gen"),
             uiOutput("ui_met_trt")#
           ),
          column(width = 9,
           DT::dataTableOutput("met_raw")
           )
  )


}
