.class final Lcom/tencent/mm/pluginsdk/ui/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic fkQ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/EmojiView;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/m;->fkQ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    .line 100
    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->pn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/m;->fkQ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->a(Lcom/tencent/mm/pluginsdk/ui/EmojiView;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/m;->fkQ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->invalidate()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
