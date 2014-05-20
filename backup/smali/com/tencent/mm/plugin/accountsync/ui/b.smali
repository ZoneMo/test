.class final Lcom/tencent/mm/plugin/accountsync/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/modelsimple/g;


# instance fields
.field final synthetic cIm:Lcom/tencent/mm/plugin/accountsync/ui/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/accountsync/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/tencent/mm/plugin/accountsync/ui/b;->cIm:Lcom/tencent/mm/plugin/accountsync/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/b;->cIm:Lcom/tencent/mm/plugin/accountsync/ui/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/accountsync/ui/a;->cIl:Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/accountsync/ui/ContactsSyncUI;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 249
    return-void
.end method
