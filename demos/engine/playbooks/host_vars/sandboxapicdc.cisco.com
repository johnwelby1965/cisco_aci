---
#
#  Tenant Policies
#
    fvTenant:
      - name: RedHat
        descr: 'Ansible@johnwelby'
        state: present

      - name: Cisco_1
        descr: 'Ansible@johnwelby'
        state: present

    fvCtx:
      - name: APP1
        descr: vrf @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction
        state: present
        fvTenant: 
          name: RedHat

      - name: ACCT1
        descr: vrf @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: egress                                       # policy control direction      
        state: present
        fvTenant: 
          name: Cisco_1

      - name: DMZ
        descr: vrf @johnwelby
        pcEnfPref: enforced                                    # policy control preference
        pcEnfDir: ingress                                       # policy control direction      
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
