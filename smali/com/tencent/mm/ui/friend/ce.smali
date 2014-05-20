.class final Lcom/tencent/mm/ui/friend/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hbW:Lcom/tencent/mm/ui/friend/cd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/ce;->hbW:Lcom/tencent/mm/ui/friend/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/ce;->hbW:Lcom/tencent/mm/ui/friend/cd;

    iget-object v0, v0, Lcom/tencent/mm/ui/friend/cd;->hbV:Lcom/tencent/mm/ui/friend/RecommendFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/RecommendFriendUI;->c(Lcom/tencent/mm/ui/friend/RecommendFriendUI;)V

    .line 127
    return-void
.end method
