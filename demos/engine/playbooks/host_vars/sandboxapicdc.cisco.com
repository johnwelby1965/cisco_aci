---
#
#  Tenant Policies
#
    fvTenant:
      - name: DEV
        descr: 'Ansible@johnwelby'
        state: present

      - name: DEPLOYMENT
        descr: 'Ansible@johnwelby'
        state: present

    fvCtx:
      - name: APP
        descr: vrf @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction
        state: present
        fvTenant: 
          name: DEV

      - name: LAN
        descr: vrf @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: present
        fvTenant: 
          name: DEPLOYMENT

      - name: WAN
        descr: vrf @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: absent
        fvTenant: 
          name: DEPLOYMENT        
#
# Fabric Access Policies
#
    lldpIfP:
      - adminRxSt: on
        adminTxSt: on
        descr: 'LLDP Interface Policy@johnwelby'
        name: Link_Layer_Discovery_Protocol_ON
        state: present
