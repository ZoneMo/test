.class public final Lcom/tencent/mm/c/a/fz;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQx:Lcom/tencent/mm/c/a/ga;

.field public bQy:Lcom/tencent/mm/c/a/gb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/fz;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/fz;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ga;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ga;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/fz;->bQx:Lcom/tencent/mm/c/a/ga;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/gb;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gb;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/fz;->bQy:Lcom/tencent/mm/c/a/gb;

    .line 8
    const-string v0, "SetLocalQQMobile"

    iput-object v0, p0, Lcom/tencent/mm/c/a/fz;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/fz;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/fz;->gbY:Z

    return-void
.end method
