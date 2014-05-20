.class final Lcom/tencent/mm/ui/friend/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/friend/cn;


# instance fields
.field final synthetic hbI:Lcom/tencent/mm/ui/friend/bi;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/bn;->hbI:Lcom/tencent/mm/ui/friend/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ea(Z)V
    .locals 1
    .parameter

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/bn;->hbI:Lcom/tencent/mm/ui/friend/bi;

    iget-object v0, v0, Lcom/tencent/mm/ui/friend/bi;->hbF:Lcom/tencent/mm/ui/friend/InviteFriendUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->finish()V

    .line 321
    :cond_0
    return-void
.end method
