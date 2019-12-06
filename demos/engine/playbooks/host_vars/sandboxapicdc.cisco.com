---
#
#  Tenant Policies
#
    fvTenant:
      - name: INTERNAL
        descr: '@joelwking'
        state: present

      - name: EXTERNAL
        descr: '@joelwking'
        state: present

    fvCtx:
      - name: GREEN
        descr: vrf GREEN @joelwking
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction
        state: present
        fvTenant: 
          name: INTERNAL

      - name: RED
        descr: vrf RED @joelwking
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: present
        fvTenant: 
          name: EXTERNAL

      - name: BLACK
        descr: vrf BLACK @joelwking
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: absent
        fvTenant: 
          name: EXTERNAL          
#
# Fabric Access Policies
#
    lldpIfP:
      - adminRxSt: on
        adminTxSt: on
        descr: 'LLDP Interface Policy @joelwking'
        name: Link_Layer_Discovery_Protocol_ON
        state: present