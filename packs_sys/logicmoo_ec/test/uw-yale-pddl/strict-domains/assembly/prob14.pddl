(DEFINE (PROBLEM ASSEM-12)
   (:DOMAIN ASSEMBLY)
   (:OBJECTS SOCKET HOOZAWHATSIE COIL DEVICE PLUG SPROCKET FROB
             CONTRAPTION THINGUMBOB WHATSIS CONNECTOR UNIT DOODAD WIDGET
             GIMCRACK FASTENER TUBE HACK MOUNT VALVE FOOBAR BRACKET
             - ASSEMBLY
             TWEEZERS HAMMER - RESOURCE)
   (:INIT (AVAILABLE HOOZAWHATSIE)
          (AVAILABLE COIL)
          (AVAILABLE PLUG)
          (AVAILABLE SPROCKET)
          (AVAILABLE FROB)
          (AVAILABLE CONTRAPTION)
          (AVAILABLE WHATSIS)
          (AVAILABLE CONNECTOR)
          (AVAILABLE UNIT)
          (AVAILABLE DOODAD)
          (AVAILABLE WIDGET)
          (AVAILABLE GIMCRACK)
          (AVAILABLE HACK)
          (AVAILABLE MOUNT)
          (AVAILABLE FOOBAR)
          (AVAILABLE BRACKET)
          (REQUIRES THINGUMBOB HAMMER)
          (REQUIRES FASTENER HAMMER)
          (REQUIRES TUBE HAMMER)
          (REQUIRES VALVE HAMMER)
          (PART-OF HOOZAWHATSIE SOCKET)
          (PART-OF COIL SOCKET)
          (PART-OF DEVICE SOCKET)
          (PART-OF THINGUMBOB SOCKET)
          (PART-OF FASTENER SOCKET)
          (PART-OF PLUG DEVICE)
          (PART-OF SPROCKET DEVICE)
          (PART-OF FROB DEVICE)
          (PART-OF CONTRAPTION DEVICE)
          (PART-OF WHATSIS THINGUMBOB)
          (PART-OF CONNECTOR THINGUMBOB)
          (PART-OF UNIT THINGUMBOB)
          (PART-OF DOODAD THINGUMBOB)
          (PART-OF WIDGET THINGUMBOB)
          (PART-OF GIMCRACK THINGUMBOB)
          (PART-OF TUBE FASTENER)
          (PART-OF VALVE FASTENER)
          (PART-OF HACK TUBE)
          (PART-OF MOUNT TUBE)
          (PART-OF FOOBAR VALVE)
          (PART-OF BRACKET VALVE)
          (ASSEMBLE-ORDER FROB PLUG DEVICE)
          (ASSEMBLE-ORDER FROB CONTRAPTION DEVICE)
          (ASSEMBLE-ORDER CONTRAPTION PLUG DEVICE)
          (ASSEMBLE-ORDER WHATSIS WIDGET THINGUMBOB)
          (ASSEMBLE-ORDER WHATSIS DOODAD THINGUMBOB)
          (ASSEMBLE-ORDER DOODAD CONNECTOR THINGUMBOB))
   (:GOAL (COMPLETE SOCKET)))