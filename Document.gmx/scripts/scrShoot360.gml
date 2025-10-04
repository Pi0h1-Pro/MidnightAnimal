if light > 0 setrumble(0, 65535, 65535)
else setrumble(0, 0, 0)
if gettrigger_r(0) > 100 {
    scrPlayerAttack()
}
