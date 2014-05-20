.class final Lcom/tencent/mm/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/chatting/lz;


# instance fields
.field final synthetic bKP:Lcom/tencent/mm/app/c;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/mm/app/d;->bKP:Lcom/tencent/mm/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nB()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/tencent/mm/app/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/app/e;-><init>(Lcom/tencent/mm/app/d;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
