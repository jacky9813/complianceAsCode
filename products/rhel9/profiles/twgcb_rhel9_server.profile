documentation_complete: true

metadata:
    version: 1.0
    SMEs:
        - jacky9813
        - GCBService@nics.nat.gov.tw

reference: 'https://download.nics.nat.gov.tw/UploadFile/attachfilegcb/TWGCB-01-012_Red%20Hat%20Enterprise%20Linux%209%E6%94%BF%E5%BA%9C%E7%B5%84%E6%85%8B%E5%9F%BA%E6%BA%96%E8%AA%AA%E6%98%8E%E6%96%87%E4%BB%B6(%E4%BC%BA%E6%9C%8D%E5%99%A8)v1.0_1121207.pdf'

title: 'Taiwan Goverment Configuration Baseline for Red Hat Enterprise Linux 9 Server'

description: |-
    政府組態基準(Government Configuration Baseline，以下簡稱 GCB)目的在於規範資通訊終端
    設備(如個人電腦等)之一致性安全設定(如通行碼長度、更新期限等)，以降低成為駭客入侵管道，進而
    引發資安事件之風險。

    本文件適用於紅帽公司(Red Hat)所發行之 Red Hat Enterprise Linux 9 作業系統，且該系統
    扮演伺服器(Server)角色。

selections:
    - twgcb_rhel9_server:all:firewalld
