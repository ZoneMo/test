.class final Lcom/tencent/mm/ui/base/dj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gCD:Lcom/tencent/mm/ui/base/di;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/di;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/tencent/mm/ui/base/dj;->gCD:Lcom/tencent/mm/ui/base/di;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dj;->gCD:Lcom/tencent/mm/ui/base/di;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/di;->a(Lcom/tencent/mm/ui/base/di;)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
