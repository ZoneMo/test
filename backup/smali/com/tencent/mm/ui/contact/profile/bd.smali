.class final Lcom/tencent/mm/ui/contact/profile/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic gWJ:Lcom/tencent/mm/ui/contact/profile/bb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/bd;->gWJ:Lcom/tencent/mm/ui/contact/profile/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 2
    .parameter

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bd;->gWJ:Lcom/tencent/mm/ui/contact/profile/bb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/profile/bb;->dW(Z)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
