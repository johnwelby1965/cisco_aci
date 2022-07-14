---
#
#  Tenant Policies
#
    fvTenant:
      - name: DEMO_INT
        descr: 'Red Hat Cisco Automation Demo'
        state: present

      - name: DEMO_EXT
        descr: 'Red Hat Cisco Automation Demo'
        state: present

    fvCtx:
      - name: GREEN
        descr: vrf GREEN Demo
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction
        state: present
        fvTenant: 
          name: DEMO_INT

      - name: RED
        descr: vrf RED Demo
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: present
        fvTenant: 
          name: DEMO_EXT

      - name: BLACK
        descr: vrf BLACK Demo
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: absent
        fvTenant: 
          name: DEMO_EXT          

# Fabric Access Policies
#
    lldpIfP:
      - adminRxSt: on
        adminTxSt: on
        descr: 'LLDP Interface Policy Demo'
        name: Link_Layer_Discovery_Protocol_ON
        state: present


