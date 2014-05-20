.class final Lcom/tencent/mm/ui/chatting/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gKM:Lcom/tencent/mm/ui/chatting/v;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/v;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/x;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/x;->gKM:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FE()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/v;->a(Lcom/tencent/mm/ui/chatting/v;J)J

    .line 409
    return-void
.end method
