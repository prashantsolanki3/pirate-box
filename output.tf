# generate files for Ansible
resource "local_file" "ansible_hosts" {
  content = templatefile("${path.module}/templates/hosts.tpl",
    {
      dev  = var.ipv4
      user = var.user
    }
  )
  filename = "./.dots/hosts"
}

resource "local_file" "id_rsa" {
  content = templatefile("${path.module}/templates/id_rsa.tpl",
    {
      public_key  = file(var.public_key_file)
    }
  )
  filename = "./.dots/id_rsa.pub"
}

resource "local_file" "ipv4" {
  content = templatefile("${path.module}/templates/ipv4.tpl",
    {
      ipv4  = var.ipv4
    }
  )
  filename = "./.dots/ipv4"
}

resource "local_file" "ipv4_host" {
  content = templatefile("${path.module}/templates/ipv4.tpl",
    {
      ipv4  = var.ipv4_host
    }
  )
  filename = "./.dots/ipv4_host"
}

resource "local_file" "dots_repo" {
  content = templatefile("${path.module}/templates/git_repo.tpl",
    {
      git_repo  = var.dots_ansible_repo
    }
  )
  filename = "./.dots/dots_repo"
}

resource "local_file" "doclab_repo" {
  content = templatefile("${path.module}/templates/git_repo.tpl",
    {
      git_repo  = var.doclab_repo
    }
  )
  filename = "./.dots/doclab_repo"
}