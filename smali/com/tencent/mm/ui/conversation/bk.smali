.class final Lcom/tencent/mm/ui/conversation/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bk;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1464
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/bk;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/z/i;-><init>(ILcom/tencent/mm/n/n;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 1465
    return-void
.end method
