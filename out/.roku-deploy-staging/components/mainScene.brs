 sub init()
    'Roku IP 192.168.0.31
    m.user1Poster = m.top.findNode("user1")
    m.user2Poster = m.top.findNode("user2")
    m.user3Poster = m.top.findNode("user3")
    m.user4Poster = m.top.findNode("user4")
    m.user5Poster = m.top.findNode("user5")
    
    m.user1Label = m.top.findNode("nameUser1Label")
    m.user2Label = m.top.findNode("nameUser2Label")
    m.user3Label = m.top.findNode("nameUser3Label")
    m.user4Label = m.top.findNode("nameUser4Label")
    m.user5Label = m.top.findNode("nameUser5Label")

    m.user1Button = m.top.findNode("user1Button")
    m.user2Button = m.top.findNode("user2Button")
    m.user3Button = m.top.findNode("user3Button")
    m.user4Button = m.top.findNode("user4Button")
    m.user5Button = m.top.findNode("user5Button")

    m.user1Poster.observeField("focusedChild", "onFocusChain")  
    m.user2Poster.observeField("focusedChild", "onFocusChain") 
    m.user3Poster.observeField("focusedChild", "onFocusChain") 
    m.user4Poster.observeField("focusedChild", "onFocusChain") 
    m.user5Poster.observeField("focusedChild", "onFocusChain") 

    m.user1Button.observeField("buttonSelected", "onUser1ButtonSelected")  
    m.user2Button.observeField("buttonSelected", "onUser2ButtonSelected") 
    m.user3Button.observeField("buttonSelected", "onUser3ButtonSelected") 
    m.user4Button.observeField("buttonSelected", "onUser4ButtonSelected") 
    m.user5Button.observeField("buttonSelected", "onUser5ButtonSelected")    
    
    setConfig()
end sub

sub setConfig()
      m.user1Poster.setFocus(true)
end sub

sub onFocusChain()

      if m.user1Poster.isInFocusChain() then
            m.user1Poster.opacity=1
            m.user2Poster.opacity=0.4
            m.user3Poster.opacity=0.4
            m.user4Poster.opacity=0.4
            m.user5Poster.opacity=0.4

            m.user1Label.opacity = 1
            m.user2Label.opacity = 0.4
            m.user3Label.opacity = 0.4
            m.user4Label.opacity = 0.4
            m.user5Label.opacity = 0.4

            m.user1Button.visible = "true"
            m.user2Button.visible = "false"
            m.user3Button.visible = "false"
            m.user4Button.visible = "false"
            m.user5Button.visible = "false"

      elseif m.user2Poster.isInFocusChain()
            m.user1Poster.opacity=0.4
            m.user2Poster.opacity=1
            m.user3Poster.opacity=0.4
            m.user4Poster.opacity=0.4
            m.user5Poster.opacity=0.4

            m.user1Label.opacity = 0.4
            m.user2Label.opacity = 1
            m.user3Label.opacity = 0.4
            m.user4Label.opacity = 0.4
            m.user5Label.opacity = 0.4

            m.user1Button.visible = "false"
            m.user2Button.visible = "true"
            m.user3Button.visible = "false"
            m.user4Button.visible = "false"
            m.user5Button.visible = "false"

      elseif m.user3Poster.isInFocusChain()
            m.user1Poster.opacity=0.4
            m.user2Poster.opacity=0.4
            m.user3Poster.opacity=1
            m.user4Poster.opacity=0.4
            m.user5Poster.opacity=0.4

            m.user1Label.opacity = 0.4
            m.user2Label.opacity = 0.4
            m.user3Label.opacity = 1
            m.user4Label.opacity = 0.4
            m.user5Label.opacity = 0.4

            m.user1Button.visible = "false"
            m.user2Button.visible = "false"
            m.user3Button.visible = "true"
            m.user4Button.visible = "false"
            m.user5Button.visible = "false"

      elseif m.user4Poster.isInFocusChain()
            m.user1Poster.opacity=0.4
            m.user2Poster.opacity=0.4
            m.user3Poster.opacity=0.4
            m.user4Poster.opacity=1
            m.user5Poster.opacity=0.4

            m.user1Label.opacity = 0.4
            m.user2Label.opacity = 0.4
            m.user3Label.opacity = 0.4
            m.user4Label.opacity = 1
            m.user5Label.opacity = 0.4

            m.user1Button.visible = "false"
            m.user2Button.visible = "false"
            m.user3Button.visible = "false"
            m.user4Button.visible = "true"
            m.user5Button.visible = "false"

      elseif m.user5Poster.isInFocusChain()
            m.user1Poster.opacity=0.4
            m.user2Poster.opacity=0.4
            m.user3Poster.opacity=0.4
            m.user4Poster.opacity=0.4
            m.user5Poster.opacity=1

            m.user1Label.opacity = 0.4
            m.user2Label.opacity = 0.4
            m.user3Label.opacity = 0.4
            m.user4Label.opacity = 0.4
            m.user5Label.opacity = 1

            m.user1Button.visible = "false"
            m.user2Button.visible = "false"
            m.user3Button.visible = "false"
            m.user4Button.visible = "false"
            m.user5Button.visible = "true"

      end if

end sub

sub onButtonSelected()

end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
      handled = true
      ?">>key ";key;">>press ";press

      if press then
            
            if key = "down" then  

                  if m.user1Poster.isInFocusChain() then
                        m.user1Button.setFocus(true)
                  elseif m.user2Poster.isInFocusChain() 
                        m.user2Button.setFocus(true)
                  elseif m.user3Poster.isInFocusChain() 
                        m.user3Button.setFocus(true)
                  elseif m.user4Poster.isInFocusChain() 
                        m.user4Button.setFocus(true)
                  elseif m.user5Poster.isInFocusChain() 
                        m.user5Button.setFocus(true)
                  end if 

            elseif key = "right"

                  if m.user1Poster.isInFocusChain() then
                        m.user2Poster.setFocus(true)
                  elseif m.user2Poster.isInFocusChain() 
                        m.user3Poster.setFocus(true)
                  elseif m.user3Poster.isInFocusChain() 
                        m.user4Poster.setFocus(true)
                  elseif m.user4Poster.isInFocusChain() 
                        m.user5Poster.setFocus(true)
                  end if 

            elseif key = "left"

                  if m.user5Poster.isInFocusChain() then
                        m.user4Poster.setFocus(true)
                  elseif m.user4Poster.isInFocusChain() 
                        m.user3Poster.setFocus(true)
                  elseif m.user3Poster.isInFocusChain() 
                        m.user2Poster.setFocus(true)
                  elseif m.user2Poster.isInFocusChain() 
                        m.user1Poster.setFocus(true)
                  end if 
                     
            elseif key ="up"
                  
                  if m.user1Button.isInFocusChain() then
                        m.user1Poster.setFocus(true)
                  elseif m.user2Button.isInFocusChain() 
                        m.user2Poster.setFocus(true)
                  elseif m.user3Button.isInFocusChain() 
                        m.user3Poster.setFocus(true)
                  elseif m.user4Button.isInFocusChain() 
                        m.user4Poster.setFocus(true)
                  elseif m.user5Button.isInFocusChain() 
                        m.user5Poster.setFocus(true)
                  end if 

            end if
          
      end if

     return handled
end function

