<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY docbook.dsl PUBLIC "-//Norman Walsh//DOCUMENT DocBook HTML Stylesheet//EN" CDATA DSSSL>
]>

<style-sheet>
<style-specification use="docbook">
<style-specification-body>

(define (chunk-element-list)
  (list (normalize "preface")
	(normalize "chapter")
	(normalize "appendix") 
	(normalize "article")
	(normalize "glossary")
	(normalize "bibliography")
	(normalize "index")
	(normalize "colophon")
	(normalize "setindex")
	(normalize "reference")
	(normalize "refentry")
	(normalize "part")
	(normalize "book") ;; just in case nothing else matches...
	(normalize "set")  ;; sets are definitely chunks...
	))

(define (section-element-list)
  (list (normalize "section")
    (normalize "sect1")
  ))

(define %chapter-autolabel% 
  ;; Are chapters enumerated?
  #t)

(define %section-autolabel%
  ;; Are sections enumerated?
  #t)

(define %graphic-default-extension%
  "png")

(define ($admon-graphic$ #!optional (nd (current-node)))
  ;; Admonition graphic file
  ;; Given an admonition node, returns the name of the
  ;; graphic that should be used for that admonition.
  (cond ((equal? (gi nd) (normalize "tip"))
         (string-append %admon-graphics-path% "tip."
                        %graphic-default-extension%))
        ((equal? (gi nd) (normalize "note"))
         (string-append %admon-graphics-path% "note."
                        %graphic-default-extension%))
        ((equal? (gi nd) (normalize "important"))
         (string-append %admon-graphics-path% "important."
                        %graphic-default-extension%))
        ((equal? (gi nd) (normalize "caution"))
	 (string-append %admon-graphics-path% "caution."
	                %graphic-default-extension%))
	((equal? (gi nd) (normalize "warning"))
	 (string-append %admon-graphics-path% "warning."
	                %graphic-default-extension%))
	 (else (error (string-append (gi nd) " is not an admonition.")))))


(define %admon-graphics%
  ;; Use graphics in admonitions?
  #t)

(define %admon-graphics-path%
  "../images/")

(define %stylesheet% "normal.css")

</style-specification-body>
</style-specification>

<external-specification id="docbook" document="docbook.dsl">

</style-sheet>
