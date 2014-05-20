.class public final Lcom/tencent/mm/c/a/ij;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRJ:Lcom/tencent/mm/c/a/ik;

.field public bRK:Lcom/tencent/mm/c/a/il;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ij;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ij;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ik;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ik;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ij;->bRJ:Lcom/tencent/mm/c/a/ik;

    .line 16
    new-instance v0, Lcom/tencent/mm/c/a/il;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/il;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ij;->bRK:Lcom/tencent/mm/c/a/il;

    .line 8
    const-string v0, "WalletPwdConfirmDoSecondaryProgressCallback"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ij;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ij;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ij;->gbY:Z

    return-void
.end method
