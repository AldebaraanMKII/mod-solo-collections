-- Set bonus disclaimer strings (module_string ids 43-45) and command
DELETE FROM `module_string` WHERE `module` = 'mod-transmog' AND `id` BETWEEN 43 AND 45;
INSERT INTO `module_string` (`module`, `id`, `string`) VALUES
('mod-transmog', 43, '|cFF4DB3FFSet bonuses won''t appear in the item tooltip while transmogrified, but they are still fully active.\nTo stop seeing this notice, type |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF.|r'),
('mod-transmog', 44, 'Set bonus disclaimer enabled.'),
('mod-transmog', 45, 'Set bonus disclaimer disabled.');

DELETE FROM `module_string_locale` WHERE `module` = 'mod-transmog' AND `id` BETWEEN 43 AND 45;
INSERT INTO `module_string_locale` (`module`, `id`, `locale`, `string`) VALUES
('mod-transmog', 43, 'koKR', '|cFF4DB3FF변형 중에는 아이템 툴팁에 세트 보너스가 표시되지 않지만, 여전히 완전히 활성화되어 있습니다.\n이 알림을 중지하려면 |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF 을 입력하세요.|r'),
('mod-transmog', 43, 'frFR', '|cFF4DB3FFLes bonus de set n''apparaîtront pas dans l''info-bulle de l''objet lors de la transmogrification, mais ils restent pleinement actifs.\nPour arrêter d''afficher cette notice, tapez |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF.|r'),
('mod-transmog', 43, 'deDE', '|cFF4DB3FFSetboni werden in der Gegenstandsbeschreibung während der Transmogrifizierung nicht angezeigt, sind aber weiterhin voll aktiv.\nUm diesen Hinweis zu deaktivieren, gib |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF ein.|r'),
('mod-transmog', 43, 'zhCN', '|cFF4DB3FF幻化后物品提示中不会显示套装加成，但套装加成仍然完全有效。\n若要停止显示此提示，请输入 |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF。|r'),
('mod-transmog', 43, 'zhTW', '|cFF4DB3FF幻化後物品提示中不會顯示套裝加成，但套裝加成仍然完全有效。\n若要停止顯示此提示，請輸入 |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF。|r'),
('mod-transmog', 43, 'esES', '|cFF4DB3FFLas bonificaciones de conjunto no aparecerán en la descripción del objeto mientras esté transfigurado, pero siguen activas.\nPara dejar de ver este aviso, escribe |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF.|r'),
('mod-transmog', 43, 'esMX', '|cFF4DB3FFLas bonificaciones de conjunto no aparecerán en la descripción del objeto mientras esté transfigurado, pero siguen activas.\nPara dejar de ver este aviso, escribe |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF.|r'),
('mod-transmog', 43, 'ruRU', '|cFF4DB3FFБонусы набора не будут отображаться в подсказке предмета при трансмогрификации, но они по-прежнему полностью активны.\nЧтобы скрыть это уведомление, введите |cFFFFFFFF.transmog disclaimer off|cFF4DB3FF.|r'),
('mod-transmog', 44, 'koKR', '세트 보너스 알림이 활성화되었습니다.'),
('mod-transmog', 44, 'frFR', 'Avertissement de bonus de set activé.'),
('mod-transmog', 44, 'deDE', 'Setbonus-Hinweis aktiviert.'),
('mod-transmog', 44, 'zhCN', '套装加成提示已启用。'),
('mod-transmog', 44, 'zhTW', '套裝加成提示已啟用。'),
('mod-transmog', 44, 'esES', 'Aviso de bonificación de conjunto activado.'),
('mod-transmog', 44, 'esMX', 'Aviso de bonificación de conjunto activado.'),
('mod-transmog', 44, 'ruRU', 'Уведомление о бонусах набора включено.'),
('mod-transmog', 45, 'koKR', '세트 보너스 알림이 비활성화되었습니다.'),
('mod-transmog', 45, 'frFR', 'Avertissement de bonus de set désactivé.'),
('mod-transmog', 45, 'deDE', 'Setbonus-Hinweis deaktiviert.'),
('mod-transmog', 45, 'zhCN', '套装加成提示已禁用。'),
('mod-transmog', 45, 'zhTW', '套裝加成提示已禁用。'),
('mod-transmog', 45, 'esES', 'Aviso de bonificación de conjunto desactivado.'),
('mod-transmog', 45, 'esMX', 'Aviso de bonificación de conjunto desactivado.'),
('mod-transmog', 45, 'ruRU', 'Уведомление о бонусах набора отключено.');

DELETE FROM `command` WHERE `name` = 'transmog disclaimer';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('transmog disclaimer', 0, 'Syntax: .transmog disclaimer <on/off>\nToggles the set bonus disclaimer notice shown when transmogrifying set items.');
