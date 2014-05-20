.class final Lcom/tencent/mm/ui/chatting/kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gQy:Lcom/tencent/mm/ui/chatting/kc;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/kc;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/kd;->gQy:Lcom/tencent/mm/ui/chatting/kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/tencent/mm/ab/j;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/tencent/mm/ab/j;-><init>(I)V

    .line 78
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 79
    return-void
.end method
