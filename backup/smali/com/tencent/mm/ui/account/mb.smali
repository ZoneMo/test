.class final Lcom/tencent/mm/ui/account/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic guZ:Lcom/tencent/mm/ui/account/lz;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/lz;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mb;->guZ:Lcom/tencent/mm/ui/account/lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/model/cb;

    new-instance v2, Lcom/tencent/mm/ui/account/mc;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/mc;-><init>(Lcom/tencent/mm/ui/account/mb;)V

    const-string v3, "launch normal"

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 257
    return-void
.end method
