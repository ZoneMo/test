.class final Lcom/tencent/mm/ui/friend/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/friend/cs;


# instance fields
.field final synthetic hbI:Lcom/tencent/mm/ui/friend/bi;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/bo;->hbI:Lcom/tencent/mm/ui/friend/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eb(Z)V
    .locals 3
    .parameter

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 333
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->At()Lcom/tencent/mm/modelfriend/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/bo;->hbI:Lcom/tencent/mm/ui/friend/bi;

    iget-object v1, v1, Lcom/tencent/mm/ui/friend/bi;->hbF:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->d(Lcom/tencent/mm/ui/friend/InviteFriendUI;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelfriend/ad;->s(Ljava/lang/String;I)Z

    .line 335
    :cond_0
    return-void
.end method
