local isRecording = false

local function openMenu()
    local menuOptions = {
        {
            title = Config.strings.button_record,
            icon = 'fa-solid fa-circle-play',
            disabled = isRecording,
            onSelect = function()
                StartRecording(1)
                isRecording = true
                lib.notify({ title = Config.strings.menu_title, description = Config.strings.notify_record, type =
                'success' })
            end
        },
        {
            title = Config.strings.button_saveclip,
            icon = 'fa-solid fa-floppy-disk',
            onSelect = function()
                StartRecording(0)
                StopRecordingAndSaveClip()
                isRecording = false
                lib.notify({ title = Config.strings.menu_title, description = Config.strings.notify_saveclip, type =
                'success' })
            end
        },
        {
            title = Config.strings.button_delclip,
            icon = 'fa-solid fa-trash',
            onSelect = function()
                StopRecordingAndDiscardClip()
                isRecording = false
                lib.notify({ title = Config.strings.menu_title, description = Config.strings.notify_delclip, type =
                'success' })
            end
        },
        {
            title = Config.strings.button_editor,
            icon = 'fa-solid fa-scissors',
            onSelect = function()
                NetworkSessionLeaveSinglePlayer()
                ActivateRockstarEditor()
                lib.notify({ title = Config.strings.menu_title, description = Config.strings.notify_editor, type = 'info' })
            end
        }
    }

    lib.registerContext({
        id = 'rockstar_menu',
        title = Config.strings.menu_title,
        options = menuOptions
    })

    lib.showContext('rockstar_menu')
end

RegisterCommand("rockstar", openMenu, false)
