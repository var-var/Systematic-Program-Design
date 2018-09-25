;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HtDDDesignQuiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; HtDD Design Quiz
;; Data definition:
;; Age is Natural
;; interp. the age of a person in years
(define A0 18)
(define A1 25)

#;
(define (fn-for-age a)
  (... a))

;; Template rules used:
;; - atomic non-distinct: Natural

;; ==================
;; Function:
;; Age->boolean
;; Produce true if age>= 13 and age <= 19
(check-expect (teenager? 19) true)
(check-expect (teenager? 21) false)
(check-expect (teenager? 13) true)
               
;(define (teenager? a) false)    ;stub

(define (teenager? a)
  (and (>= a 13) (<= a 19)))

;; Data definition:
;; MonthAge is Natural
;; interp. the age of a person in months
(define MA0 216)
(define MA1 300)

#;
(define (fn-for-age ma)
  (... ma))

;; Template rules used:
;; - atomic non-distinct: Natural

;; ==================
;; Function:
;; Age->MonthAge
;; Consums a person's age in years(Age)
;; and yields that person's age in months(MonthAge)
(check-expect (months-old 18) 216)
(check-expect (months-old 25) 300)

;(define (months-old a) 0)    ;stub

;<Template from  Age>

(define (months-old a)
  (* 12 a))


;; Data definition:
;; Health is one of:
;; - "dead"
;; - [0, +inf.f]
;; Interp. the health of character in video game
;;           "dead"  means the char is dead
;;      [0, +inf.f]  means 0 or more extra lives
(define H1 false)
(define H2 0)
(define H3 15)
#;
(define (fn-for-health h)
  (cond[(string? h) (...)]
       [else (... h)]))

;; Template rules used:
;; - one of 2 cases:
;; - atomic distinct: "dead"
;; - Natural[0,+inf.f]

;; ==========================
;; Function:
;; Health->Health
;; increase the lives of a character if the character is not dead, otherwise produce "dead".
(check-expect (increase-health 29) 30)
(check-expect (increase-health 0) 1)
(check-expect (increase-health "dead") "dead")

;(define (increase-health ih) false) ;stub

; <Template from  Health>

(define (increase-health h)
  (cond[(string? h) "dead"]
       [else (+ 1 h)]))
       



