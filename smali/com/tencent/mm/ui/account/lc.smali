.class final Lcom/tencent/mm/ui/account/lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic guz:Lcom/tencent/mm/ui/account/lb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/lb;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tencent/mm/ui/account/lc;->guz:Lcom/tencent/mm/ui/account/lb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/account/lc;->guz:Lcom/tencent/mm/ui/account/lb;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/lb;->guy:Lcom/tencent/mm/ui/account/la;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/la;->gux:Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/ShowNonWeixinFriendUI;->finish()V

    .line 115
    return-void
.end method
