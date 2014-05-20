.class final Lcom/tencent/mm/ui/account/lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic guN:Lcom/tencent/mm/ui/account/ls;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/ls;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tencent/mm/ui/account/lt;->guN:Lcom/tencent/mm/ui/account/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/model/cb;

    new-instance v2, Lcom/tencent/mm/ui/account/lu;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/lu;-><init>(Lcom/tencent/mm/ui/account/lt;)V

    const-string v3, "launch normal"

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 223
    return-void
.end method
