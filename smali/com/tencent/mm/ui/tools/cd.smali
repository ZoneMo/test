.class final Lcom/tencent/mm/ui/tools/cd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cd;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 109
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/cd;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->g(ZI)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
