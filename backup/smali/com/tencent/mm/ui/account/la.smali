.class final Lcom/tencent/mm/ui/account/la;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gux:Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/mm/ui/account/la;->gux:Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/tencent/mm/ui/a/a/e;

    const-string v1, "290293790992170"

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/a/a/e;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v2, "message"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/la;->gux:Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;

    sget v4, Lcom/tencent/mm/n;->bko:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "to"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/la;->gux:Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;->a(Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/tencent/mm/ui/account/la;->gux:Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;

    const-string v3, "apprequests"

    new-instance v4, Lcom/tencent/mm/ui/account/lb;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/account/lb;-><init>(Lcom/tencent/mm/ui/account/la;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/tencent/mm/ui/a/a/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/mm/ui/a/a/g;)V

    .line 125
    return-void
.end method
