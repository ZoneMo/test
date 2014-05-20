.class final Lcom/tencent/mm/ui/contact/profile/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic gWp:Lcom/tencent/mm/ui/contact/profile/ag;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ah;->gWp:Lcom/tencent/mm/ui/contact/profile/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 2
    .parameter

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ah;->gWp:Lcom/tencent/mm/ui/contact/profile/ag;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/ag;->a(Lcom/tencent/mm/ui/contact/profile/ag;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/profile/ag;->b(Landroid/content/Context;Z)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
