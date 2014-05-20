.class final Lcom/tencent/mm/ui/chatting/gx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPO:Lcom/tencent/mm/ui/chatting/gw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/gw;)V
    .locals 0
    .parameter

    .prologue
    .line 1901
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/gx;->gPO:Lcom/tencent/mm/ui/chatting/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1905
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hy(I)V

    .line 1906
    return-void
.end method
