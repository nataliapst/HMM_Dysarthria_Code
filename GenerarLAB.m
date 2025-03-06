%Generar archivos .lab


% Lista de directorios donde están los archivos .mfc
directorios_mfc = {
    'C:\Users\root\Desktop\htk-3.2.1\F\F01\Session1\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\F\F03\Session1\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\F\F03\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\F\F03\Session3\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\F\F04\Session1\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\F\F04\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\FC\FC01\Session1\wav_arrayMic\', 
    'C:\Users\root\Desktop\htk-3.2.1\FC\FC02\Session2\wav_arrayMic\', 
    'C:\Users\root\Desktop\htk-3.2.1\FC\FC02\Session3\wav_arrayMic\', 
    'C:\Users\root\Desktop\htk-3.2.1\FC\FC03\Session1\wav_arrayMic\', 
    'C:\Users\root\Desktop\htk-3.2.1\FC\FC03\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\FC\FC03\Session3\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M01\Session1\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M01\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M02\Session1\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M02\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M03\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M04\Session1\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M04\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session1\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_arrayMic\',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC01\Session1\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC01\Session2\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC01\Session3\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC02\Session1\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC02\Session2\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC03\Session1\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC03\Session2\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC04\Session1\wav_arrayMic',
    'C:\Users\root\Desktop\htk-3.2.1\MC\MC04\Session2\wav_arrayMic'
};

% Definir etiquetas para cada directorio
etiquetas_directorio = { 
    'Dysarthria', % Clase para el primer directorio
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'No_Dysarthria', % Clase para el segundo directorio
    'No_Dysarthria',
    'No_Dysarthria',
    'No_Dysarthria',
    'No_Dysarthria',
    'No_Dysarthria',
    'Dysarthria', % Clase para el primer directorio
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'Dysarthria',
    'No_Dysarthria', % Clase para el segundo directorio
    'No_Dysarthria',
    'No_Dysarthria',
    'No_Dysarthria',
    'No_Dysarthria',
    'No_Dysarthria',
     'No_Dysarthria',
    'No_Dysarthria',
    'No_Dysarthria'
};

% Recorre cada directorio en la lista
for d = 1:length(directorios_mfc)
    directorio_actual = directorios_mfc{d};
    etiqueta = etiquetas_directorio{d};
    
    % Obtener la lista de archivos .mfc en el directorio actual
    archivos = dir(fullfile(directorio_actual, '*.mfc'));
    
    % Procesar cada archivo .mfc en el directorio actual
    for i = 1:length(archivos)
        nombre_archivo = archivos(i).name;
        
        % Crear el archivo .lab correspondiente
        nombre_lab = [nombre_archivo(1:end-4), '.lab'];  % Cambia .mfc por .lab
        ruta_lab = fullfile(directorio_actual, nombre_lab);
        
        % Escribir la etiqueta en el archivo .lab
        fid = fopen(ruta_lab, 'w');
        if fid == -1
            fprintf('Error al crear el archivo: %s\n', ruta_lab);
        else
            fprintf(fid, '%s\n', etiqueta);
            fclose(fid);
            fprintf('Archivo .lab creado: %s con etiqueta %s en %s\n', nombre_lab, etiqueta, directorio_actual);
        end
    end
end


























% % Lista de directorios donde están los archivos .mfc
% directorios_mfc = {
%     'C:\Users\root\Desktop\htk-3.2.1\F\F01\Session1\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\F\F03\Session1\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\F\F03\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\F\F03\Session3\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\F\F04\Session1\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\F\F04\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\FC\FC01\Session1\wav_arrayMic\', 
%     'C:\Users\root\Desktop\htk-3.2.1\FC\FC02\Session2\wav_arrayMic\', 
%     'C:\Users\root\Desktop\htk-3.2.1\FC\FC02\Session3\wav_arrayMic\', 
%     'C:\Users\root\Desktop\htk-3.2.1\FC\FC03\Session1\wav_arrayMic\', 
%     'C:\Users\root\Desktop\htk-3.2.1\FC\FC03\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\FC\FC03\Session3\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M01\Session1\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M01\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M02\Session1\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M02\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M03\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M04\Session1\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M04\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session1\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_arrayMic\',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC01\Session1\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC01\Session2\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC01\Session3\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC02\Session1\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC02\Session2\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC03\Session1\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC03\Session2\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC04\Session1\wav_arrayMic',
%     'C:\Users\root\Desktop\htk-3.2.1\MC\MC04\Session2\wav_arrayMic'
% };
% 
% % Listado de sujetos con y sin disartria
% sujetos_disartria = {'F01', 'F03', 'F04', 'M01', 'M02', 'M03', 'M04', 'M05'};
% sujetos_no_disartria = {'FC01', 'FC02', 'FC03', 'MC01', 'MC02', 'MC03', 'MC04'};
% 
% % Recorre cada directorio en la lista
% for d = 1:length(directorios_mfc)
%     directorio_actual = directorios_mfc{d};
%     
%     % Obtener la lista de archivos .mfc en el directorio actual
%     archivos = dir(fullfile(directorio_actual, '*.mfc'));
%     
%     % Procesar cada archivo .mfc en el directorio actual
%     for i = 1:length(archivos)
%         nombre_archivo = archivos(i).name;
%         
%         % Inicializar etiqueta
%         etiqueta = '';
%         
%         % Determinar la etiqueta según el nombre del archivo
%        for j = 1:length(sujetos_disartria)
%             if contains(nombre_archivo, sujetos_disartria{j})
%                 etiqueta = 'Dysarthria';
%                 break;
%             end
%         end
%         
%         for j = 1:length(sujetos_no_disartria)
%             if contains(nombre_archivo, sujetos_no_disartria{j})
%                 etiqueta = 'No_Dysarthria';
%                 break;
%             end
%         end
%         
%         % Si no se encuentra la etiqueta, pasar al siguiente archivo
%         if isempty(etiqueta)
%             continue;
%         end
%         
%         % Crear el archivo .lab correspondiente
%         nombre_lab = [nombre_archivo(1:end-4), '.lab'];  % Cambia .mfc por .lab
%         ruta_lab = fullfile(directorio_actual, nombre_lab);
%         
%         % Escribir la etiqueta en el archivo .lab
%         fid = fopen(ruta_lab, 'w');
%         fprintf(fid, '%s\n', etiqueta);
%         fclose(fid);
%         
%         % Mostrar mensaje de creación
%         fprintf('Archivo .lab creado: %s con etiqueta %s en %s\n', nombre_lab, etiqueta, directorio_actual);
%     end
% end
