.class public Linfo/guardianproject/database/HeapCursor$RowBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final endIndex:I

.field private index:I

.field private obj:[Ljava/lang/Object;

.field final synthetic this$0:Linfo/guardianproject/database/HeapCursor;


# direct methods
.method constructor <init>(Linfo/guardianproject/database/HeapCursor;II[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->this$0:Linfo/guardianproject/database/HeapCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p2, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->index:I

    .line 125
    iput p3, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->endIndex:I

    .line 126
    iput-object p4, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->obj:[Ljava/lang/Object;

    .line 127
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Linfo/guardianproject/database/HeapCursor$RowBuilder;
    .locals 3
    .parameter

    .prologue
    .line 137
    iget v0, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->index:I

    iget v1, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 138
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    .line 139
    const-string v1, "No more columns left."

    .line 138
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->obj:[Ljava/lang/Object;

    iget v1, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linfo/guardianproject/database/HeapCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 143
    return-object p0
.end method
