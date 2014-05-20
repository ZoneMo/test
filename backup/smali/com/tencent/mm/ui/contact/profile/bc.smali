.class final Lcom/tencent/mm/ui/contact/profile/bc;
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
    .line 93
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/bc;->gWJ:Lcom/tencent/mm/ui/contact/profile/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 1
    .parameter

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bc;->gWJ:Lcom/tencent/mm/ui/contact/profile/bb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/bb;->clear()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
