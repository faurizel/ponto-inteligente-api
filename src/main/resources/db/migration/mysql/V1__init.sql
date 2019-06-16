CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `data_atualizacao` datetime NOT NULL,
  `data_criacao` datetime NOT NULL,
  `razao_social` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `funcionario` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `valor_hora` decimal(19,2) NOT NULL,
  `qtd_horas_trabalhada_dia` float DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL,
  `empresa_id` bigint(20) DEFAULT NULL,
  `data_atualizacao` datetime NOT NULL,
  `data_criacao` datetime NOT NULL,
  `qtd_horas_almoco` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `lancamento` (
  `id` bigint(20) NOT NULL,
  `data` datetime NOT NULL,
  `data_atualizacao` datetime NOT NULL,
  `data_criacao` datetime NOT NULL,
  `localizacao` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) NOT NULL,
  `funcionario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Indexes for table empresa
alter table `empresa`
MODIFY `id` bigint(20) NOT NULL auto_increment;

--Indexes for table funcionario
alter table `funcionario`
MODIFY `id` bigint(20) NOT NULL auto_increment;

--Indexes for table lancamento
alter table `lancamento`
MODIFY `id` bigint(20) NOT NULL auto_increment;

--Constraints for table funcionario

ALTER TABLE `funcionario` ADD CONSTRAINT `constraint_id_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresa`(`id`);

--Constraints for table lancamento
ALTER TABLE `lancamento` ADD CONSTRAINT `constraint_id_lancamento` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario`(`id`);

