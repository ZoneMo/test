.class final Lcom/tencent/mm/ui/account/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic gsf:Lcom/tencent/mm/ui/account/fa;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/fa;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fc;->gsf:Lcom/tencent/mm/ui/account/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 1
    .parameter

    .prologue
    .line 495
    packed-switch p1, :pswitch_data_0

    .line 498
    :goto_0
    return-void

    .line 497
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fc;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->k(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
