;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image, image -> Boolean
;; Return true, if 1st Image > 2nd Image (width and height Image1 > width and height Image2).
(check-expect (larger_than_second? (right-triangle 15 50 "solid" "black")
                                   (circle 10 "solid" "red")) false)
(check-expect (larger_than_second? (ellipse 10 20 "solid" "yellow")
                                   (circle 4 "solid" "red")) true)
(check-expect (larger_than_second? (rectangle 20 20 "solid" "perple")
                                   (rectangle 20 20 "outline" "black")) false)


;(define (larger_than_second? img1 img2) false)    ;this is stub

;(define (larger_than_second? img1 img2)           ;this is template
;  (...img1 img2)

(define (larger_than_second? img1 img2)
  (and (> (image-width img1) (image-width img2))
       (> (image-height img1) (image-height img2))))
