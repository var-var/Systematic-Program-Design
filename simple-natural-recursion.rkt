;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname simple-natural-recursion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Constants:

(define TEXT-SIZE 24)
(define TEXT-COLOR "orange")
(define SEPARATOR (text ", " TEXT-SIZE TEXT-COLOR))


;; Function:

;; Number -> Image
;; Produce image of numbers from Entered Number to 0
(check-expect (string-n-times 0) (beside (text "0" TEXT-SIZE TEXT-COLOR)                                         
                                         (text "." TEXT-SIZE TEXT-COLOR)))
(check-expect (string-n-times 1) (beside (text "1" TEXT-SIZE TEXT-COLOR)
                                         SEPARATOR
                                         (string-n-times 0)))
(check-expect (string-n-times 2) (beside (text "2" TEXT-SIZE TEXT-COLOR)
                                         SEPARATOR
                                         (string-n-times 1)))
              
;(define (string-n-times n) (beside (text "0" TEXT-SIZE TEXT-COLOR)
;                                  (square 0 "solid" "white")))      ;stub



(define (string-n-times n)
  (cond [(zero? n) (beside (text "0" TEXT-SIZE TEXT-COLOR)                           
                           (text "." TEXT-SIZE TEXT-COLOR))]                           
        [else         
         (beside (text (number->string n) TEXT-SIZE TEXT-COLOR)
                 SEPARATOR
                 (string-n-times (- n 1)))]))

