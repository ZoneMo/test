.class final Lcom/tencent/mm/plugin/accountsync/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cIA:Lcom/tencent/mm/plugin/accountsync/ui/o;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/accountsync/ui/o;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/tencent/mm/plugin/accountsync/ui/q;->cIA:Lcom/tencent/mm/plugin/accountsync/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/q;->cIA:Lcom/tencent/mm/plugin/accountsync/ui/o;

    iget-object v0, v0, Lcom/tencent/mm/plugin/accountsync/ui/o;->cIz:Lcom/tencent/mm/plugin/accountsync/ui/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/accountsync/ui/n;->cIu:Lcom/tencent/mm/plugin/accountsync/ui/InviteFacebookFriendsUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/accountsync/ui/InviteFacebookFriendsUI;->finish()V

    .line 312
    return-void
.end method
