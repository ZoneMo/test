.class final Lcom/tencent/mm/ui/bindmobile/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic gIV:Lcom/tencent/mm/ui/bindmobile/w;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/w;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/y;->gIV:Lcom/tencent/mm/ui/bindmobile/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/y;->gIV:Lcom/tencent/mm/ui/bindmobile/w;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/w;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->e(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
