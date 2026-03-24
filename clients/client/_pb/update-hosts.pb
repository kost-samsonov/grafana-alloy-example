- name: Add FQDN to hosts
  hosts: all             # Добавлена эта строка (обязательно для плейбука)
  become: true
  gather_facts: true
  vars:
      # Укажите желаемый домен здесь
      domain_name: "xmri.local"

  tasks:                 # Теперь на правильном уровне
    - name: Add FQDN to /etc/hosts for localhost entry
      ansible.builtin.lineinfile:
        path: /etc/hosts
        regexp: '^127\.0\.1\.1'
        line: "127.0.1.1 {{ ansible_facts['hostname'] }}.{{ domain_name }} {{ ansible_facts['hostname'] }}"
        state: present



