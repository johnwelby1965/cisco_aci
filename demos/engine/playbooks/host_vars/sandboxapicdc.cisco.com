---
#
#  Tenant Policies
#
    fvTenant:
      - name: INTERNAL
        descr: 'Red Hat Cisco Alliance@johnwelby'
        state: present

      - name: EXTERNAL
        descr: '@johnwelby'
        state: present

    fvCtx:
      - name: GREEN
        descr: vrf GREEN @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction
        state: present
        fvTenant: 
          name: INTERNAL

      - name: RED
        descr: vrf RED @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: present
        fvTenant: 
          name: EXTERNAL

      - name: BLACK
        descr: vrf BLACK @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: absent
        fvTenant: 
          name: EXTERNAL          

# Fabric Access Policies
#
    lldpIfP:
      - adminRxSt: on
        adminTxSt: on
        descr: 'LLDP Interface Policy @johnwelby'
        name: Link_Layer_Discovery_Protocol_ON
        state: present


